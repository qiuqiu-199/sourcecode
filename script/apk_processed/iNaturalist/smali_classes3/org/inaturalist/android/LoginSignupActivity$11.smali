.class Lorg/inaturalist/android/LoginSignupActivity$11;
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

    .line 283
    iput-object p1, p0, Lorg/inaturalist/android/LoginSignupActivity$11;->this$0:Lorg/inaturalist/android/LoginSignupActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .line 286
    iget-object p1, p0, Lorg/inaturalist/android/LoginSignupActivity$11;->this$0:Lorg/inaturalist/android/LoginSignupActivity;

    invoke-static {p1}, Lorg/inaturalist/android/LoginSignupActivity;->access$100(Lorg/inaturalist/android/LoginSignupActivity;)Lorg/inaturalist/android/ActivityHelper;

    move-result-object p1

    const v0, 0x7f1000fc

    const v1, 0x7f1000fd

    invoke-virtual {p1, v0, v1}, Lorg/inaturalist/android/ActivityHelper;->alert(II)V

    return-void
.end method
