package event

import (
	amqp "github.com/rabbitmq/amqp091-go"
)

func declareExchange(ch *amqp.Channel) error {
	return ch.ExchangeDeclare(
		"logs_topic", //name
		"topic", // topic type
		true, // durable?
		false, // auto deleted
		false, // is it just used internally? no, between microservice
		false, // no-wait?
		nil, //argumets?
	)
}

func declareRandomQueue(ch *amqp.Channel) (amqp.Queue, error) {
	return ch.QueueDeclare(
		"", // name
		false, // durable? get rid when done with it
		false, //dont delete
		true, // dont share around/ exclusive
		false, //no-wait 
		nil, // no arguments
	)
}