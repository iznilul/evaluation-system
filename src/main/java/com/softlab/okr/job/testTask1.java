package com.softlab.okr.job;

import com.softlab.okr.annotation.TaskInfo;
import lombok.SneakyThrows;
import org.quartz.Job;
import org.quartz.JobExecutionContext;
import org.quartz.JobExecutionException;

/**
 * @program:
 * @description:
 * @author: lulinzi
 * @create: 2021-08-24 16:15
 **/
@TaskInfo(taskId = "T1", name = "任务1", function = "测试")
public class testTask1 implements Job {

  @SneakyThrows
  @Override
  public void execute(JobExecutionContext jobExecutionContext) throws JobExecutionException {
    System.out.println("任务一");
  }
}
