.class Lorg/inaturalist/android/WebActivity$1;
.super Ljava/lang/Object;
.source "WebActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/inaturalist/android/WebActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/inaturalist/android/WebActivity;


# direct methods
.method constructor <init>(Lorg/inaturalist/android/WebActivity;)V
    .locals 0

    .line 76
    iput-object p1, p0, Lorg/inaturalist/android/WebActivity$1;->this$0:Lorg/inaturalist/android/WebActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3

    .line 79
    iget-object p1, p0, Lorg/inaturalist/android/WebActivity$1;->this$0:Lorg/inaturalist/android/WebActivity;

    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lorg/inaturalist/android/WebActivity$1;->this$0:Lorg/inaturalist/android/WebActivity;

    const-class v2, Lorg/inaturalist/android/OnboardingActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const/high16 v1, 0x24000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    move-result-object v0

    const/16 v1, 0x1000

    invoke-virtual {p1, v0, v1}, Lorg/inaturalist/android/WebActivity;->startActivityForResult(Landroid/content/Intent;I)V

    return-void
.end method
