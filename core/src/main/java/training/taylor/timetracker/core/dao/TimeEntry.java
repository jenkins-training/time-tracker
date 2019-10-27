package training.taylor.timetracker.core.dao;

import org.springframework.context.annotation.Scope;
import org.springframework.stereotype.Component;

/**
 * Created by Jason on 6/19/2015.
 */
@Component
@Scope("prototype")
public class TimeEntry {
    private String description;
    private float rate;
    private int time;

    public String getDescription() {
        return description;
    }

    public void setDescription(final String value) {
        this.description = value;
    }

    public float getRate() {
        return rate;
    }

    public void setRate(final float value) {
        this.rate = value;
    }

    public int getTime() {
        return time;
    }

    public void setTime(final int value) {
        this.time = value;
    }

    @Override
    public String toString() {
        return "TimeEntry{" +
                "description='" + description + '\'' +
                ", rate=" + rate +
                ", time=" + time +
                '}';
    }
}
