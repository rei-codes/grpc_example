package main

import (
	"context"
	"fmt"
	"io"
	pb "main/pb"
	"net"

	"google.golang.org/grpc"
)

func main() {
	lis, _ := net.Listen("tcp", "localhost:50051")
	srv := grpc.NewServer()
	pb.RegisterMyServiceServer(srv, &server{})
	srv.Serve(lis)
}

type server struct {
}

// Unary
func (s *server) ReadUser(ctx context.Context, req *pb.ReadUserReq) (*pb.ReadUserRes, error) {
	fmt.Println(req)
	return &pb.ReadUserRes{
		User: &pb.User{
			Id:    req.Id,
			Email: "ehe@ehe.com",
		},
	}, nil
}

// Server Streaming
func (s *server) Channel(req *pb.ChannelReq, stream pb.MyService_ChannelServer) error {
	for i := 0; i < 10; i++ {
		fmt.Println(req)
		stream.Send(&pb.ChannelRes{
			Message: &pb.Message{
				Id:        fmt.Sprintf("%d", i),
				ChannelId: req.ChannelId,
				UserId:    fmt.Sprintf("%d", i),
				Message:   fmt.Sprintf("Hey! %d", i),
			},
		},
		)
	}
	return nil
}

// Client Streaming
func (s *server) Log(stream pb.MyService_LogServer) error {
	for {
		log, err := stream.Recv()
		if err == io.EOF {
			return stream.SendAndClose(&pb.LogRes{})
		}
		if err != nil {
			return err
		}
		fmt.Println(log)
	}
}

// Bi-Directional Streaming
func (s *server) Chat(stream pb.MyService_ChatServer) error {
	for {
		msg, err := stream.Recv()
		if err != nil {
			return err
		}
		fmt.Println(msg)
		stream.Send(&pb.ChatRes{
			Message: &pb.Message{
				Id:        msg.Message.GetId(),
				ChannelId: msg.Message.GetChannelId(),
				UserId:    msg.Message.GetUserId(),
				Message:   msg.Message.GetMessage(),
			},
		},
		)
	}
}
