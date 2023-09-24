.class Lorg/inaturalist/android/OnboardingActivity$6;
.super Ljava/lang/Object;
.source "OnboardingActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/inaturalist/android/OnboardingActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/inaturalist/android/OnboardingActivity;


# direct methods
.method constructor <init>(Lorg/inaturalist/android/OnboardingActivity;)V
    .locals 0

    .line 164
    iput-object p1, p0, Lorg/inaturalist/android/OnboardingActivity$6;->this$0:Lorg/inaturalist/android/OnboardingActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4

    .line 167
    iget-object p1, p0, Lorg/inaturalist/android/OnboardingActivity$6;->this$0:Lorg/inaturalist/android/OnboardingActivity;

    invoke-static {p1}, Lorg/inaturalist/android/OnboardingActivity;->access$300(Lorg/inaturalist/android/OnboardingActivity;)Z

    move-result p1

    if-nez p1, :cond_0

    .line 168
    iget-object p1, p0, Lorg/inaturalist/android/OnboardingActivity$6;->this$0:Lorg/inaturalist/android/OnboardingActivity;

    invoke-virtual {p1}, Lorg/inaturalist/android/OnboardingActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    const v0, 0x7f100285

    const/4 v1, 0x1

    invoke-static {p1, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    return-void

    .line 172
    :cond_0
    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v0, 0x1a

    if-ge p1, v0, :cond_1

    iget-object p1, p0, Lorg/inaturalist/android/OnboardingActivity$6;->this$0:Lorg/inaturalist/android/OnboardingActivity;

    const-string v0, "android.permission.GET_ACCOUNTS"

    .line 173
    invoke-static {p1, v0}, Landroid/support/v4/content/ContextCompat;->checkSelfPermission(Landroid/content/Context;Ljava/lang/String;)I

    move-result p1

    if-eqz p1, :cond_1

    .line 174
    iget-object p1, p0, Lorg/inaturalist/android/OnboardingActivity$6;->this$0:Lorg/inaturalist/android/OnboardingActivity;

    invoke-static {p1}, Lorg/inaturalist/android/OnboardingActivity;->access$400(Lorg/inaturalist/android/OnboardingActivity;)Lorg/inaturalist/android/ActivityHelper;

    move-result-object p1

    const v0, 0x7f1001dd

    const v1, 0x7f100064

    const v2, 0x7f1002a1

    new-instance v3, Lorg/inaturalist/android/OnboardingActivity$6$1;

    invoke-direct {v3, p0}, Lorg/inaturalist/android/OnboardingActivity$6$1;-><init>(Lorg/inaturalist/android/OnboardingActivity$6;)V

    invoke-virtual {p1, v0, v1, v2, v3}, Lorg/inaturalist/android/ActivityHelper;->confirm(IIILandroid/content/DialogInterface$OnClickListener;)V

    goto :goto_0

    .line 181
    :cond_1
    iget-object p1, p0, Lorg/inaturalist/android/OnboardingActivity$6;->this$0:Lorg/inaturalist/android/OnboardingActivity;

    invoke-static {p1}, Lorg/inaturalist/android/OnboardingActivity;->access$000(Lorg/inaturalist/android/OnboardingActivity;)Lorg/inaturalist/android/SignInTask;

    move-result-object p1

    sget-object v0, Lorg/inaturalist/android/INaturalistService$LoginType;->GOOGLE:Lorg/inaturalist/android/INaturalistService$LoginType;

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1, v1}, Lorg/inaturalist/android/SignInTask;->signIn(Lorg/inaturalist/android/INaturalistService$LoginType;Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void
.end method
