.class Lorg/inaturalist/android/NetworkSettings$1;
.super Ljava/lang/Object;
.source "NetworkSettings.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/inaturalist/android/NetworkSettings;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/inaturalist/android/NetworkSettings;


# direct methods
.method constructor <init>(Lorg/inaturalist/android/NetworkSettings;)V
    .locals 0

    .line 93
    iput-object p1, p0, Lorg/inaturalist/android/NetworkSettings$1;->this$0:Lorg/inaturalist/android/NetworkSettings;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .line 96
    new-instance p1, Landroid/content/Intent;

    const-string v0, "android.intent.action.VIEW"

    invoke-direct {p1, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 97
    iget-object v0, p0, Lorg/inaturalist/android/NetworkSettings$1;->this$0:Lorg/inaturalist/android/NetworkSettings;

    const v1, 0x7f1001be

    invoke-virtual {v0, v1}, Lorg/inaturalist/android/NetworkSettings;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 98
    iget-object v0, p0, Lorg/inaturalist/android/NetworkSettings$1;->this$0:Lorg/inaturalist/android/NetworkSettings;

    invoke-virtual {v0, p1}, Lorg/inaturalist/android/NetworkSettings;->startActivity(Landroid/content/Intent;)V

    return-void
.end method
