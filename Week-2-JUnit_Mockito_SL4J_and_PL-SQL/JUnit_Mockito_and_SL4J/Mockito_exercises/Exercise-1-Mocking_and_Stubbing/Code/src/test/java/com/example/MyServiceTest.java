package com.example;

import org.junit.jupiter.api.Test;
import org.mockito.Mockito;

import static org.mockito.Mockito.*;
import static org.junit.jupiter.api.Assertions.*;

public class MyServiceTest {

    @Test
    public void testExternalApi() {
        // Step 1: Create mock object
        ExternalApi mockApi = Mockito.mock(ExternalApi.class);

        // Step 2: Stub method
        when(mockApi.getData()).thenReturn("Mock Data");

        // Step 3: Inject mock and test
        MyService service = new MyService(mockApi);
        String result = service.fetchData();

        // Assert
        assertEquals("Mock Data", result);
    }
}
