.class Lorg/inaturalist/android/GuideDetails$7;
.super Ljava/lang/Object;
.source "GuideDetails.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/inaturalist/android/GuideDetails;->onDownloadProgress(JJLjava/lang/String;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/inaturalist/android/GuideDetails;


# direct methods
.method constructor <init>(Lorg/inaturalist/android/GuideDetails;)V
    .locals 0

    .line 506
    iput-object p1, p0, Lorg/inaturalist/android/GuideDetails$7;->this$0:Lorg/inaturalist/android/GuideDetails;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 509
    iget-object v0, p0, Lorg/inaturalist/android/GuideDetails$7;->this$0:Lorg/inaturalist/android/GuideDetails;

    invoke-static {v0}, Lorg/inaturalist/android/GuideDetails;->access$1400(Lorg/inaturalist/android/GuideDetails;)Landroid/widget/TextView;

    move-result-object v0

    const v1, 0x7f100159

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    return-void
.end method
