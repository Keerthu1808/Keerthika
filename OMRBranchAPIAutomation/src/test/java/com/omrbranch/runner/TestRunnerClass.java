package com.omrbranch.runner;
import org.junit.runner.RunWith;
import io.cucumber.junit.Cucumber;
import io.cucumber.junit.CucumberOptions;

@RunWith(Cucumber.class)
@CucumberOptions(glue="com.omrbranch.stepdefinition",features="C:\\Users\\Dell\\OneDrive\\Desktop\\java\\JAVA\\OMRBranchAPIAutomation\\src\\test\\resources\\Feature\\TC1_Login.feature")

public class TestRunnerClass{}