.class Lorg/inaturalist/android/LoginSignupActivity$12;
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

    .line 295
    iput-object p1, p0, Lorg/inaturalist/android/LoginSignupActivity$12;->this$0:Lorg/inaturalist/android/LoginSignupActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .line 298
    iget-object p1, p0, Lorg/inaturalist/android/LoginSignupActivity$12;->this$0:Lorg/inaturalist/android/LoginSignupActivity;

    iget-object v0, p0, Lorg/inaturalist/android/LoginSignupActivity$12;->this$0:Lorg/inaturalist/android/LoginSignupActivity;

    invoke-static {v0}, Lorg/inaturalist/android/LoginSignupActivity;->access$1300(Lorg/inaturalist/android/LoginSignupActivity;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    invoke-static {p1, v0}, Lorg/inaturalist/android/LoginSignupActivity;->access$1302(Lorg/inaturalist/android/LoginSignupActivity;Z)Z

    .line 299
    iget-object p1, p0, Lorg/inaturalist/android/LoginSignupActivity$12;->this$0:Lorg/inaturalist/android/LoginSignupActivity;

    invoke-static {p1}, Lorg/inaturalist/android/LoginSignupActivity;->access$1300(Lorg/inaturalist/android/LoginSignupActivity;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 300
    iget-object p1, p0, Lorg/inaturalist/android/LoginSignupActivity$12;->this$0:Lorg/inaturalist/android/LoginSignupActivity;

    invoke-static {p1}, Lorg/inaturalist/android/LoginSignupActivity;->access$1400(Lorg/inaturalist/android/LoginSignupActivity;)Landroid/widget/ImageView;

    move-result-object p1

    const v0, 0x7f080161

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0

    .line 302
    :cond_0
    iget-object p1, p0, Lorg/inaturalist/android/LoginSignupActivity$12;->this$0:Lorg/inaturalist/android/LoginSignupActivity;

    invoke-static {p1}, Lorg/inaturalist/android/LoginSignupActivity;->access$1400(Lorg/inaturalist/android/LoginSignupActivity;)Landroid/widget/ImageView;

    move-result-object p1

    const v0, 0x7f080160

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    :goto_0
    return-void
.end method
