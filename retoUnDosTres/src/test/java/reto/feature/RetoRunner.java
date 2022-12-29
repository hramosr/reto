package reto.feature;

import com.intuit.karate.junit5.Karate;

class RetoRunner {
    
    @Karate.Test
    Karate testUnDosTres() {
        return Karate.run("feature").relativeTo(getClass());
    }
}
