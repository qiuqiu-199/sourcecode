.class Lorg/inaturalist/android/GuideDetails$5;
.super Ljava/lang/Object;
.source "GuideDetails.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/inaturalist/android/GuideDetails;->showDownloadGuideError()V
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

    .line 454
    iput-object p1, p0, Lorg/inaturalist/android/GuideDetails$5;->this$0:Lorg/inaturalist/android/GuideDetails;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 457
    iget-object v0, p0, Lorg/inaturalist/android/GuideDetails$5;->this$0:Lorg/inaturalist/android/GuideDetails;

    invoke-static {v0}, Lorg/inaturalist/android/GuideDetails;->access$300(Lorg/inaturalist/android/GuideDetails;)Lorg/inaturalist/android/ActivityHelper;

    move-result-object v0

    const v1, 0x7f10015e

    const v2, 0x7f1001d1

    invoke-virtual {v0, v1, v2}, Lorg/inaturalist/android/ActivityHelper;->alert(II)V

    .line 458
    iget-object v0, p0, Lorg/inaturalist/android/GuideDetails$5;->this$0:Lorg/inaturalist/android/GuideDetails;

    invoke-static {v0}, Lorg/inaturalist/android/GuideDetails;->access$100(Lorg/inaturalist/android/GuideDetails;)Lorg/inaturalist/android/GuideXML;

    move-result-object v0

    invoke-virtual {v0}, Lorg/inaturalist/android/GuideXML;->deleteOfflineGuide()Z

    .line 459
    iget-object v0, p0, Lorg/inaturalist/android/GuideDetails$5;->this$0:Lorg/inaturalist/android/GuideDetails;

    invoke-static {v0}, Lorg/inaturalist/android/GuideDetails;->access$1200(Lorg/inaturalist/android/GuideDetails;)V

    return-void
.end method
