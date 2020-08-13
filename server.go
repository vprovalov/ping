package main

import (
	"net/http"
	"os"

	"github.com/gin-gonic/gin"
)

var hostname, _ = os.Hostname()

func index(c *gin.Context) {
	c.String(http.StatusOK, "")
}

func ping(c *gin.Context) {
	c.JSON(200, gin.H{
		"message":  "pong",
		"hostname": hostname,
	})
}

func main() {
	r := gin.Default()

	r.GET("/", index)
	r.GET("/ping", ping)
	r.Run() // listen and serve on 0.0.0.0:8080 (for windows "localhost:8080")
}
