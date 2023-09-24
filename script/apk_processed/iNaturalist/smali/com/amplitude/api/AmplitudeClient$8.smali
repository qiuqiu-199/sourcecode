.class Lcom/amplitude/api/AmplitudeClient$8;
.super Ljava/lang/Object;
.source "AmplitudeClient.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amplitude/api/AmplitudeClient;->setUserProperties(Lorg/json/JSONObject;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/amplitude/api/AmplitudeClient;

.field final synthetic val$userProperties:Lorg/json/JSONObject;


# direct methods
.method constructor <init>(Lcom/amplitude/api/AmplitudeClient;Lorg/json/JSONObject;)V
    .locals 0

    .line 1299
    iput-object p1, p0, Lcom/amplitude/api/AmplitudeClient$8;->this$0:Lcom/amplitude/api/AmplitudeClient;

    iput-object p2, p0, Lcom/amplitude/api/AmplitudeClient$8;->val$userProperties:Lorg/json/JSONObject;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .line 1302
    iget-object v0, p0, Lcom/amplitude/api/AmplitudeClient$8;->this$0:Lcom/amplitude/api/AmplitudeClient;

    iget-object v0, v0, Lcom/amplitude/api/AmplitudeClient;->apiKey:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 1309
    :cond_0
    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    iget-object v1, p0, Lcom/amplitude/api/AmplitudeClient$8;->val$userProperties:Lorg/json/JSONObject;

    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_1

    .line 1316
    iget-object v1, p0, Lcom/amplitude/api/AmplitudeClient$8;->this$0:Lcom/amplitude/api/AmplitudeClient;

    invoke-virtual {v1, v0}, Lcom/amplitude/api/AmplitudeClient;->truncate(Lorg/json/JSONObject;)Lorg/json/JSONObject;

    move-result-object v0

    .line 1317
    invoke-virtual {v0}, Lorg/json/JSONObject;->length()I

    move-result v1

    if-nez v1, :cond_1

    return-void

    .line 1321
    :cond_1
    new-instance v1, Lcom/amplitude/api/Identify;

    invoke-direct {v1}, Lcom/amplitude/api/Identify;-><init>()V

    .line 1322
    invoke-virtual {v0}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object v2

    .line 1323
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 1324
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 1326
    :try_start_1
    invoke-virtual {v0, v3}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Lcom/amplitude/api/Identify;->setUserProperty(Ljava/lang/String;Ljava/lang/Object;)Lcom/amplitude/api/Identify;
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    :catch_0
    move-exception v3

    .line 1328
    invoke-static {}, Lcom/amplitude/api/AmplitudeClient;->access$300()Lcom/amplitude/api/AmplitudeLog;

    move-result-object v4

    const-string v5, "com.amplitude.api.AmplitudeClient"

    invoke-virtual {v3}, Lorg/json/JSONException;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4, v5, v3}, Lcom/amplitude/api/AmplitudeLog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1331
    :cond_2
    iget-object v0, p0, Lcom/amplitude/api/AmplitudeClient$8;->this$0:Lcom/amplitude/api/AmplitudeClient;

    invoke-virtual {v0, v1}, Lcom/amplitude/api/AmplitudeClient;->identify(Lcom/amplitude/api/Identify;)V

    return-void

    :catch_1
    move-exception v0

    .line 1311
    invoke-static {}, Lcom/amplitude/api/AmplitudeClient;->access$300()Lcom/amplitude/api/AmplitudeLog;

    move-result-object v1

    const-string v2, "com.amplitude.api.AmplitudeClient"

    invoke-virtual {v0}, Lorg/json/JSONException;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v2, v0}, Lcom/amplitude/api/AmplitudeLog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method
