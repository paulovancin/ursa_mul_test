APP_MULT_TEST_NAME  := mult_test
APP_MULT_TEST_DIR   := $(SRC_DIR)/../applications/$(APP_MULT_TEST_NAME)
APP_MULT_TEST_SRC   := $(APP_MULT_TEST_DIR)/src
APP_MULT_TEST_INC   := $(APP_MULT_TEST_DIR)/include
APP_MULT_TEST_LIB   := app-$(APP_MULT_TEST_NAME).a

# Update these lines with your source code
APP_MULT_TEST_OBJS := \
	mult_test.o

#pack everithing in a single lib
$(APP_MULT_TEST_LIB) : $(APP_MULT_TEST_OBJS)
	ar rcs $(APP_MULT_TEST_LIB) $(APP_MULT_TEST_OBJS)

#compile each individual object file
%.o: $(APP_MULT_TEST_SRC)/%.c
	$(CC) $(CFLAGS) -c -o $@ $< -I$(APP_MULT_TEST_INC)

#check whether .h are up to date
$(APP_MULT_TEST_SRC)/%.c: $(APP_MULT_TEST_INC)/%.h
