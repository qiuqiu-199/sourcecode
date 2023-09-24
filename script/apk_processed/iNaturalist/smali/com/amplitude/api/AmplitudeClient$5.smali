.class Lcom/amplitude/api/AmplitudeClient$5;
.super Ljava/lang/Object;
.source "AmplitudeClient.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amplitude/api/AmplitudeClient;->logEventAsync(Ljava/lang/String;Lorg/json/JSONObject;Lorg/json/JSONObject;Lorg/json/JSONObject;Lorg/json/JSONObject;JZ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/amplitude/api/AmplitudeClient;

.field final synthetic val$apiProperties:Lorg/json/JSONObject;

.field final synthetic val$copyEventProperties:Lorg/json/JSONObject;

.field final synthetic val$copyGroups:Lorg/json/JSONObject;

.field final synthetic val$copyUserProperties:Lorg/json/JSONObject;

.field final synthetic val$eventType:Ljava/lang/String;

.field final synthetic val$outOfSession:Z

.field final synthetic val$timestamp:J


# direct methods
.method constructor <init>(Lcom/amplitude/api/AmplitudeClient;Ljava/lang/String;Lorg/json/JSONObject;Lorg/json/JSONObject;Lorg/json/JSONObject;Lorg/json/JSONObject;JZ)V
    .locals 0

    .line 836
    iput-object p1, p0, Lcom/amplitude/api/AmplitudeClient$5;->this$0:Lcom/amplitude/api/AmplitudeClient;

    iput-object p2, p0, Lcom/amplitude/api/AmplitudeClient$5;->val$eventType:Ljava/lang/String;

    iput-object p3, p0, Lcom/amplitude/api/AmplitudeClient$5;->val$copyEventProperties:Lorg/json/JSONObject;

    iput-object p4, p0, Lcom/amplitude/api/AmplitudeClient$5;->val$apiProperties:Lorg/json/JSONObject;

    iput-object p5, p0, Lcom/amplitude/api/AmplitudeClient$5;->val$copyUserProperties:Lorg/json/JSONObject;

    iput-object p6, p0, Lcom/amplitude/api/AmplitudeClient$5;->val$copyGroups:Lorg/json/JSONObject;

    iput-wide p7, p0, Lcom/amplitude/api/AmplitudeClient$5;->val$timestamp:J

    iput-boolean p9, p0, Lcom/amplitude/api/AmplitudeClient$5;->val$outOfSession:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 10

    .line 839
    iget-object v0, p0, Lcom/amplitude/api/AmplitudeClient$5;->this$0:Lcom/amplitude/api/AmplitudeClient;

    iget-object v0, v0, Lcom/amplitude/api/AmplitudeClient;->apiKey:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 842
    :cond_0
    iget-object v1, p0, Lcom/amplitude/api/AmplitudeClient$5;->this$0:Lcom/amplitude/api/AmplitudeClient;

    iget-object v2, p0, Lcom/amplitude/api/AmplitudeClient$5;->val$eventType:Ljava/lang/String;

    iget-object v3, p0, Lcom/amplitude/api/AmplitudeClient$5;->val$copyEventProperties:Lorg/json/JSONObject;

    iget-object v4, p0, Lcom/amplitude/api/AmplitudeClient$5;->val$apiProperties:Lorg/json/JSONObject;

    iget-object v5, p0, Lcom/amplitude/api/AmplitudeClient$5;->val$copyUserProperties:Lorg/json/JSONObject;

    iget-object v6, p0, Lcom/amplitude/api/AmplitudeClient$5;->val$copyGroups:Lorg/json/JSONObject;

    iget-wide v7, p0, Lcom/amplitude/api/AmplitudeClient$5;->val$timestamp:J

    iget-boolean v9, p0, Lcom/amplitude/api/AmplitudeClient$5;->val$outOfSession:Z

    invoke-virtual/range {v1 .. v9}, Lcom/amplitude/api/AmplitudeClient;->logEvent(Ljava/lang/String;Lorg/json/JSONObject;Lorg/json/JSONObject;Lorg/json/JSONObject;Lorg/json/JSONObject;JZ)J

    return-void
.end method
