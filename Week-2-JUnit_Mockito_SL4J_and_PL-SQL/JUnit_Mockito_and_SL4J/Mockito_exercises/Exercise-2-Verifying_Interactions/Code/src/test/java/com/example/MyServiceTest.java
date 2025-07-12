package com.example;

import static org.mockito.Mockito.*;
import static org.junit.jupiter.api.Assertions.*;

import com.example.ExternalApi;
import com.example.MyService;
import org.junit.jupiter.api.Test;
import org.mockito.Mockito;

public class MyServiceTest {

    @Test
    public void testVerifyInteraction() {
        // Arrange
        ExternalApi mockApi = Mockito.mock(ExternalApi.class);
        MyService service = new MyService(mockApi);

        // Act
        service.fetchData();

        // Assert
        verify(mockApi).getData();  // verify that getData() was called once
    }
}
