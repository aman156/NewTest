<?xml version="1.0" encoding="UTF-8"?>
<Workflow xmlns="http://soap.sforce.com/2006/04/metadata">
    <fieldUpdates>
        <fullName>Set_Case_to_Escalated</fullName>
        <field>IsEscalated</field>
        <name>Set Case to Escalated</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Literal</operation>
        <protected>false</protected>
    </fieldUpdates>
    <fieldUpdates>
        <fullName>Set_Case_to_Escalated1</fullName>
        <field>IsEscalated</field>
        <literalValue>1</literalValue>
        <name>Set Case to Escalated</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Literal</operation>
        <protected>false</protected>
    </fieldUpdates>
    <fieldUpdates>
        <fullName>Set_Case_to_Escalated12</fullName>
        <field>IsEscalated</field>
        <literalValue>1</literalValue>
        <name>Set Case to Escalated12</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Literal</operation>
        <protected>false</protected>
    </fieldUpdates>
    <rules>
        <fullName>Case Escalate on High Priority</fullName>
        <actions>
            <name>Set_Case_to_Escalated12</name>
            <type>FieldUpdate</type>
        </actions>
        <actions>
            <name>Follow_Up_on_Escalated_Case12</name>
            <type>Task</type>
        </actions>
        <active>false</active>
        <criteriaItems>
            <field>Case.IsClosed</field>
            <operation>equals</operation>
            <value>False</value>
        </criteriaItems>
        <criteriaItems>
            <field>Case.Priority</field>
            <operation>equals</operation>
            <value>High</value>
        </criteriaItems>
        <triggerType>onCreateOrTriggeringUpdate</triggerType>
    </rules>
    <tasks>
        <fullName>Follow_Up_on_Escalated_Case</fullName>
        <assignedToType>owner</assignedToType>
        <dueDateOffset>0</dueDateOffset>
        <notifyAssignee>false</notifyAssignee>
        <priority>Normal</priority>
        <protected>false</protected>
        <status>Not Started</status>
        <subject>Follow Up on Escalated Case</subject>
    </tasks>
    <tasks>
        <fullName>Follow_Up_on_Escalated_Case1</fullName>
        <assignedToType>owner</assignedToType>
        <dueDateOffset>0</dueDateOffset>
        <notifyAssignee>false</notifyAssignee>
        <priority>Normal</priority>
        <protected>false</protected>
        <status>Not Started</status>
        <subject>Follow Up on Escalated Case</subject>
    </tasks>
    <tasks>
        <fullName>Follow_Up_on_Escalated_Case12</fullName>
        <assignedToType>owner</assignedToType>
        <dueDateOffset>0</dueDateOffset>
        <notifyAssignee>false</notifyAssignee>
        <priority>Normal</priority>
        <protected>false</protected>
        <status>Not Started</status>
        <subject>Follow Up on Escalated Case12</subject>
    </tasks>
</Workflow>
