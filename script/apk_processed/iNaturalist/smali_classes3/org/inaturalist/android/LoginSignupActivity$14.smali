.class Lorg/inaturalist/android/LoginSignupActivity$14;
.super Ljava/lang/Object;
.source "LoginSignupActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/inaturalist/android/LoginSignupActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/inaturalist/android/LoginSignupActivity;


# direct methods
.method constructor <init>(Lorg/inaturalist/android/LoginSignupActivity;)V
    .locals 0

    .line 370
    iput-object p1, p0, Lorg/inaturalist/android/LoginSignupActivity$14;->this$0:Lorg/inaturalist/android/LoginSignupActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 0

    .line 373
    iget-object p1, p0, Lorg/inaturalist/android/LoginSignupActivity$14;->this$0:Lorg/inaturalist/android/LoginSignupActivity;

    invoke-static {p1}, Lorg/inaturalist/android/LoginSignupActivity;->access$200(Lorg/inaturalist/android/LoginSignupActivity;)V

    .line 374
    iget-object p1, p0, Lorg/inaturalist/android/LoginSignupActivity$14;->this$0:Lorg/inaturalist/android/LoginSignupActivity;

    invoke-static {p1}, Lorg/inaturalist/android/LoginSignupActivity;->access$1600(Lorg/inaturalist/android/LoginSignupActivity;)Lcom/facebook/login/widget/LoginButton;

    move-result-object p1

    invoke-virtual {p1}, Lcom/facebook/login/widget/LoginButton;->performClick()Z

    return-void
.end method
