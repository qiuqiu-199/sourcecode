.class Lorg/inaturalist/android/SignInTask$2;
.super Ljava/lang/Object;
.source "SignInTask.java"

# interfaces
.implements Lcom/facebook/FacebookCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/inaturalist/android/SignInTask;-><init>(Landroid/app/Activity;Lorg/inaturalist/android/SignInTask$SignInTaskStatus;Lcom/facebook/login/widget/LoginButton;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/facebook/FacebookCallback<",
        "Lcom/facebook/login/LoginResult;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lorg/inaturalist/android/SignInTask;


# direct methods
.method constructor <init>(Lorg/inaturalist/android/SignInTask;)V
    .locals 0

    .line 111
    iput-object p1, p0, Lorg/inaturalist/android/SignInTask$2;->this$0:Lorg/inaturalist/android/SignInTask;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCancel()V
    .locals 3

    .line 119
    iget-object v0, p0, Lorg/inaturalist/android/SignInTask$2;->this$0:Lorg/inaturalist/android/SignInTask;

    invoke-static {v0}, Lorg/inaturalist/android/SignInTask;->access$100(Lorg/inaturalist/android/SignInTask;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 120
    iget-object v0, p0, Lorg/inaturalist/android/SignInTask$2;->this$0:Lorg/inaturalist/android/SignInTask;

    invoke-static {v0}, Lorg/inaturalist/android/SignInTask;->access$200(Lorg/inaturalist/android/SignInTask;)Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f100285

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    :cond_0
    return-void
.end method

.method public onError(Lcom/facebook/FacebookException;)V
    .locals 2

    .line 126
    iget-object v0, p0, Lorg/inaturalist/android/SignInTask$2;->this$0:Lorg/inaturalist/android/SignInTask;

    invoke-virtual {p1}, Lcom/facebook/FacebookException;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lorg/inaturalist/android/SignInTask;->access$302(Lorg/inaturalist/android/SignInTask;Ljava/lang/String;)Ljava/lang/String;

    .line 127
    iget-object p1, p0, Lorg/inaturalist/android/SignInTask$2;->this$0:Lorg/inaturalist/android/SignInTask;

    invoke-static {p1}, Lorg/inaturalist/android/SignInTask;->access$200(Lorg/inaturalist/android/SignInTask;)Landroid/app/Activity;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    const v0, 0x7f100285

    const/4 v1, 0x1

    invoke-static {p1, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    .line 131
    :try_start_0
    new-instance p1, Lorg/json/JSONObject;

    invoke-direct {p1}, Lorg/json/JSONObject;-><init>()V

    const-string v0, "from"

    const-string v1, "Facebook"

    .line 132
    invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 133
    iget-object v0, p0, Lorg/inaturalist/android/SignInTask$2;->this$0:Lorg/inaturalist/android/SignInTask;

    invoke-static {v0}, Lorg/inaturalist/android/SignInTask;->access$300(Lorg/inaturalist/android/SignInTask;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    const-string v0, "code"

    iget-object v1, p0, Lorg/inaturalist/android/SignInTask$2;->this$0:Lorg/inaturalist/android/SignInTask;

    invoke-static {v1}, Lorg/inaturalist/android/SignInTask;->access$300(Lorg/inaturalist/android/SignInTask;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 135
    :cond_0
    invoke-static {}, Lorg/inaturalist/android/AnalyticsClient;->getInstance()Lorg/inaturalist/android/AnalyticsClient;

    move-result-object v0

    const-string v1, "Login Failed"

    invoke-virtual {v0, v1, p1}, Lorg/inaturalist/android/AnalyticsClient;->logEvent(Ljava/lang/String;Lorg/json/JSONObject;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 137
    invoke-virtual {p1}, Lorg/json/JSONException;->printStackTrace()V

    :goto_0
    return-void
.end method

.method public onSuccess(Lcom/facebook/login/LoginResult;)V
    .locals 0

    return-void
.end method

.method public bridge synthetic onSuccess(Ljava/lang/Object;)V
    .locals 0

    .line 111
    check-cast p1, Lcom/facebook/login/LoginResult;

    invoke-virtual {p0, p1}, Lorg/inaturalist/android/SignInTask$2;->onSuccess(Lcom/facebook/login/LoginResult;)V

    return-void
.end method
