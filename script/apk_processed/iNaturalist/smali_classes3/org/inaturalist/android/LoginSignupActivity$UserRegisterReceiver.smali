.class Lorg/inaturalist/android/LoginSignupActivity$UserRegisterReceiver;
.super Landroid/content/BroadcastReceiver;
.source "LoginSignupActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/inaturalist/android/LoginSignupActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "UserRegisterReceiver"
.end annotation


# instance fields
.field final synthetic this$0:Lorg/inaturalist/android/LoginSignupActivity;


# direct methods
.method private constructor <init>(Lorg/inaturalist/android/LoginSignupActivity;)V
    .locals 0

    .line 85
    iput-object p1, p0, Lorg/inaturalist/android/LoginSignupActivity$UserRegisterReceiver;->this$0:Lorg/inaturalist/android/LoginSignupActivity;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lorg/inaturalist/android/LoginSignupActivity;Lorg/inaturalist/android/LoginSignupActivity$1;)V
    .locals 0

    .line 85
    invoke-direct {p0, p1}, Lorg/inaturalist/android/LoginSignupActivity$UserRegisterReceiver;-><init>(Lorg/inaturalist/android/LoginSignupActivity;)V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2

    .line 88
    iget-object p1, p0, Lorg/inaturalist/android/LoginSignupActivity$UserRegisterReceiver;->this$0:Lorg/inaturalist/android/LoginSignupActivity;

    invoke-static {p1}, Lorg/inaturalist/android/LoginSignupActivity;->access$000(Lorg/inaturalist/android/LoginSignupActivity;)Lorg/inaturalist/android/LoginSignupActivity$UserRegisterReceiver;

    move-result-object p1

    iget-object v0, p0, Lorg/inaturalist/android/LoginSignupActivity$UserRegisterReceiver;->this$0:Lorg/inaturalist/android/LoginSignupActivity;

    invoke-static {p1, v0}, Lorg/inaturalist/android/BaseFragmentActivity;->safeUnregisterReceiver(Landroid/content/BroadcastReceiver;Landroid/content/Context;)V

    .line 89
    iget-object p1, p0, Lorg/inaturalist/android/LoginSignupActivity$UserRegisterReceiver;->this$0:Lorg/inaturalist/android/LoginSignupActivity;

    invoke-static {p1}, Lorg/inaturalist/android/LoginSignupActivity;->access$100(Lorg/inaturalist/android/LoginSignupActivity;)Lorg/inaturalist/android/ActivityHelper;

    move-result-object p1

    invoke-virtual {p1}, Lorg/inaturalist/android/ActivityHelper;->stopLoading()V

    const-string p1, "status"

    const/4 v0, 0x0

    .line 91
    invoke-virtual {p2, p1, v0}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result p1

    const-string v0, "error"

    .line 92
    invoke-virtual {p2, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    if-nez p1, :cond_0

    .line 95
    iget-object p1, p0, Lorg/inaturalist/android/LoginSignupActivity$UserRegisterReceiver;->this$0:Lorg/inaturalist/android/LoginSignupActivity;

    invoke-static {p1}, Lorg/inaturalist/android/LoginSignupActivity;->access$100(Lorg/inaturalist/android/LoginSignupActivity;)Lorg/inaturalist/android/ActivityHelper;

    move-result-object p1

    iget-object v0, p0, Lorg/inaturalist/android/LoginSignupActivity$UserRegisterReceiver;->this$0:Lorg/inaturalist/android/LoginSignupActivity;

    const v1, 0x7f100104

    invoke-virtual {v0, v1}, Lorg/inaturalist/android/LoginSignupActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0, p2}, Lorg/inaturalist/android/ActivityHelper;->alert(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 98
    :cond_0
    iget-object p1, p0, Lorg/inaturalist/android/LoginSignupActivity$UserRegisterReceiver;->this$0:Lorg/inaturalist/android/LoginSignupActivity;

    invoke-static {p1}, Lorg/inaturalist/android/LoginSignupActivity;->access$200(Lorg/inaturalist/android/LoginSignupActivity;)V

    .line 99
    iget-object p1, p0, Lorg/inaturalist/android/LoginSignupActivity$UserRegisterReceiver;->this$0:Lorg/inaturalist/android/LoginSignupActivity;

    invoke-static {p1}, Lorg/inaturalist/android/LoginSignupActivity;->access$500(Lorg/inaturalist/android/LoginSignupActivity;)Lorg/inaturalist/android/SignInTask;

    move-result-object p1

    sget-object p2, Lorg/inaturalist/android/INaturalistService$LoginType;->OAUTH_PASSWORD:Lorg/inaturalist/android/INaturalistService$LoginType;

    iget-object v0, p0, Lorg/inaturalist/android/LoginSignupActivity$UserRegisterReceiver;->this$0:Lorg/inaturalist/android/LoginSignupActivity;

    invoke-static {v0}, Lorg/inaturalist/android/LoginSignupActivity;->access$300(Lorg/inaturalist/android/LoginSignupActivity;)Landroid/widget/EditText;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lorg/inaturalist/android/LoginSignupActivity$UserRegisterReceiver;->this$0:Lorg/inaturalist/android/LoginSignupActivity;

    invoke-static {v1}, Lorg/inaturalist/android/LoginSignupActivity;->access$400(Lorg/inaturalist/android/LoginSignupActivity;)Landroid/widget/EditText;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, p2, v0, v1}, Lorg/inaturalist/android/SignInTask;->signIn(Lorg/inaturalist/android/INaturalistService$LoginType;Ljava/lang/String;Ljava/lang/String;)V

    .line 100
    invoke-static {}, Lorg/inaturalist/android/AnalyticsClient;->getInstance()Lorg/inaturalist/android/AnalyticsClient;

    move-result-object p1

    const-string p2, "Create Account"

    invoke-virtual {p1, p2}, Lorg/inaturalist/android/AnalyticsClient;->logEvent(Ljava/lang/String;)V

    :goto_0
    return-void
.end method
