.class Lorg/inaturalist/android/GuideDetails$6;
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

.field final synthetic val$progress:I


# direct methods
.method constructor <init>(Lorg/inaturalist/android/GuideDetails;I)V
    .locals 0

    .line 492
    iput-object p1, p0, Lorg/inaturalist/android/GuideDetails$6;->this$0:Lorg/inaturalist/android/GuideDetails;

    iput p2, p0, Lorg/inaturalist/android/GuideDetails$6;->val$progress:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 496
    iget-object v0, p0, Lorg/inaturalist/android/GuideDetails$6;->this$0:Lorg/inaturalist/android/GuideDetails;

    iget v1, p0, Lorg/inaturalist/android/GuideDetails$6;->val$progress:I

    invoke-static {v0, v1}, Lorg/inaturalist/android/GuideDetails;->access$1300(Lorg/inaturalist/android/GuideDetails;I)V

    return-void
.end method
