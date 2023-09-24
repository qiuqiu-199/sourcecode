.class Lorg/inaturalist/android/GuideDetails$9$1$1$1;
.super Ljava/lang/Object;
.source "GuideDetails.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/inaturalist/android/GuideDetails$9$1$1;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$3:Lorg/inaturalist/android/GuideDetails$9$1$1;


# direct methods
.method constructor <init>(Lorg/inaturalist/android/GuideDetails$9$1$1;)V
    .locals 0

    .line 853
    iput-object p1, p0, Lorg/inaturalist/android/GuideDetails$9$1$1$1;->this$3:Lorg/inaturalist/android/GuideDetails$9$1$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 856
    iget-object v0, p0, Lorg/inaturalist/android/GuideDetails$9$1$1$1;->this$3:Lorg/inaturalist/android/GuideDetails$9$1$1;

    iget-object v0, v0, Lorg/inaturalist/android/GuideDetails$9$1$1;->val$view:Landroid/widget/AbsListView;

    iget-object v1, p0, Lorg/inaturalist/android/GuideDetails$9$1$1$1;->this$3:Lorg/inaturalist/android/GuideDetails$9$1$1;

    iget-object v1, v1, Lorg/inaturalist/android/GuideDetails$9$1$1;->this$2:Lorg/inaturalist/android/GuideDetails$9$1;

    iget v1, v1, Lorg/inaturalist/android/GuideDetails$9$1;->val$finalPosition:I

    invoke-virtual {v0, v1}, Landroid/widget/AbsListView;->setSelection(I)V

    return-void
.end method
