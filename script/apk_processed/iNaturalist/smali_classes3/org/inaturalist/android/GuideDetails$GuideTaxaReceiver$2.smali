.class Lorg/inaturalist/android/GuideDetails$GuideTaxaReceiver$2;
.super Ljava/lang/Object;
.source "GuideDetails.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/inaturalist/android/GuideDetails$GuideTaxaReceiver;->onReceive(Landroid/content/Context;Landroid/content/Intent;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lorg/inaturalist/android/GuideDetails$GuideTaxaReceiver;


# direct methods
.method constructor <init>(Lorg/inaturalist/android/GuideDetails$GuideTaxaReceiver;)V
    .locals 0

    .line 257
    iput-object p1, p0, Lorg/inaturalist/android/GuideDetails$GuideTaxaReceiver$2;->this$1:Lorg/inaturalist/android/GuideDetails$GuideTaxaReceiver;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 0

    .line 260
    invoke-interface {p1}, Landroid/content/DialogInterface;->cancel()V

    return-void
.end method
