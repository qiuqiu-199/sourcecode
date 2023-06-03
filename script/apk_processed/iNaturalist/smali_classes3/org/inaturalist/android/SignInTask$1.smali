.class Lorg/inaturalist/android/SignInTask$1;
.super Lcom/facebook/AccessTokenTracker;
.source "SignInTask.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/inaturalist/android/SignInTask;-><init>(Landroid/app/Activity;Lorg/inaturalist/android/SignInTask$SignInTaskStatus;Lcom/facebook/login/widget/LoginButton;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/inaturalist/android/SignInTask;


# direct methods
.method constructor <init>(Lorg/inaturalist/android/SignInTask;)V
    .locals 0

    .line 91
    iput-object p1, p0, Lorg/inaturalist/android/SignInTask$1;->this$0:Lorg/inaturalist/android/SignInTask;

    invoke-direct {p0}, Lcom/facebook/AccessTokenTracker;-><init>()V

    return-void
.end method


# virtual methods
.method protected onCurrentAccessTokenChanged(Lcom/facebook/AccessToken;Lcom/facebook/AccessToken;)V
    .locals 3

    if-eqz p2, :cond_0

    .line 95
    iget-object p1, p0, Lorg/inaturalist/android/SignInTask$1;->this$0:Lorg/inaturalist/android/SignInTask;

    invoke-static {p1}, Lorg/inaturalist/android/SignInTask;->access$000(Lorg/inaturalist/android/SignInTask;)Landroid/content/SharedPreferences;

    move-result-object p1

    const-string v0, "username"

    const/4 v1, 0x0

    invoke-interface {p1, v0, v1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    if-nez p1, :cond_0

    .line 98
    invoke-virtual {p2}, Lcom/facebook/AccessToken;->getToken()Ljava/lang/String;

    move-result-object p1

    .line 99
    iget-object p2, p0, Lorg/inaturalist/android/SignInTask$1;->this$0:Lorg/inaturalist/android/SignInTask;

    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/String;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    const/4 v1, 0x1

    aput-object p1, v0, v1

    const/4 p1, 0x2

    sget-object v1, Lorg/inaturalist/android/INaturalistService$LoginType;->FACEBOOK:Lorg/inaturalist/android/INaturalistService$LoginType;

    invoke-virtual {v1}, Lorg/inaturalist/android/INaturalistService$LoginType;->toString()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, p1

    invoke-virtual {p2, v0}, Lorg/inaturalist/android/SignInTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    :cond_0
    return-void
.end method
