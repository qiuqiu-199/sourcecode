.class Lorg/inaturalist/android/GuideDetails$8;
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

    .line 521
    iput-object p1, p0, Lorg/inaturalist/android/GuideDetails$8;->this$0:Lorg/inaturalist/android/GuideDetails;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 524
    iget-object v0, p0, Lorg/inaturalist/android/GuideDetails$8;->this$0:Lorg/inaturalist/android/GuideDetails;

    invoke-static {v0}, Lorg/inaturalist/android/GuideDetails;->access$1200(Lorg/inaturalist/android/GuideDetails;)V

    return-void
.end method
