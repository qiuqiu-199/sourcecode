.class Lorg/inaturalist/android/LoginSignupActivity$2;
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

    .line 164
    iput-object p1, p0, Lorg/inaturalist/android/LoginSignupActivity$2;->this$0:Lorg/inaturalist/android/LoginSignupActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .line 167
    iget-object p1, p0, Lorg/inaturalist/android/LoginSignupActivity$2;->this$0:Lorg/inaturalist/android/LoginSignupActivity;

    invoke-static {p1}, Lorg/inaturalist/android/LoginSignupActivity;->access$600(Lorg/inaturalist/android/LoginSignupActivity;)Landroid/widget/EditText;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/EditText;->requestFocus()Z

    .line 168
    iget-object p1, p0, Lorg/inaturalist/android/LoginSignupActivity$2;->this$0:Lorg/inaturalist/android/LoginSignupActivity;

    invoke-virtual {p1}, Lorg/inaturalist/android/LoginSignupActivity;->getWindow()Landroid/view/Window;

    move-result-object p1

    const/4 v0, 0x5

    invoke-virtual {p1, v0}, Landroid/view/Window;->setSoftInputMode(I)V

    return-void
.end method