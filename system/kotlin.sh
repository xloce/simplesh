#!/bin/bash

kotlin.sh() {
	clear;
	sudo apt update
	sudo apt upgrade

	sudo ./kotlin/ktlint.sh
}
