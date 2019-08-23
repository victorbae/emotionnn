package baesso.victor.emotion.service;

import baesso.victor.emotion.model.Emotion;

import java.util.Collection;

public interface AnalyzeService {

    Collection<Emotion> analyze();
}
