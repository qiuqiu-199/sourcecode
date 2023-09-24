.class Lorg/inaturalist/android/OnboardingActivity$6$1;
.super Ljava/lang/Object;
.source "OnboardingActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/inaturalist/android/OnboardingActivity$6;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lorg/inaturalist/android/OnboardingActivity$6;


# direct methods
.method constructor <init>(Lorg/inaturalist/android/OnboardingActivity$6;)V
    .locals 0

    .line 174
    iput-object p1, p0, Lorg/inaturalist/android/OnboardingActivity$6$1;->this$1:Lorg/inaturalist/android/OnboardingActivity$6;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2

    .line 177
    iget-object p1, p0, Lorg/inaturalist/android/OnboardingActivity$6$1;->this$1:Lorg/inaturalist/android/OnboardingActivity$6;

    iget-object p1, p1, Lorg/inaturalist/android/OnboardingActivity$6;->this$0:Lorg/inaturalist/android/OnboardingActivity;

    const/4 p2, 0x1

    new-array p2, p2, [Ljava/lang/String;

    const-string v0, "android.permission.GET_ACCOUNTS"

    const/4 v1, 0x0

    aput-object v0, p2, v1

    const/16 v0, 0x1002

    invoke-static {p1, p2, v0}, Landroid/support/v4/app/ActivityCompat;->requestPermissions(Landroid/app/Activity;[Ljava/lang/String;I)V

    return-void
.end method
