.class Lorg/inaturalist/android/MissionsActivity$5$1;
.super Ljava/lang/Object;
.source "MissionsActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/inaturalist/android/MissionsActivity$5;->onScroll(Landroid/widget/AbsListView;III)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lorg/inaturalist/android/MissionsActivity$5;


# direct methods
.method constructor <init>(Lorg/inaturalist/android/MissionsActivity$5;)V
    .locals 0

    .line 382
    iput-object p1, p0, Lorg/inaturalist/android/MissionsActivity$5$1;->this$1:Lorg/inaturalist/android/MissionsActivity$5;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 385
    iget-object v0, p0, Lorg/inaturalist/android/MissionsActivity$5$1;->this$1:Lorg/inaturalist/android/MissionsActivity$5;

    iget-object v0, v0, Lorg/inaturalist/android/MissionsActivity$5;->this$0:Lorg/inaturalist/android/MissionsActivity;

    iget-object v1, p0, Lorg/inaturalist/android/MissionsActivity$5$1;->this$1:Lorg/inaturalist/android/MissionsActivity$5;

    iget-object v1, v1, Lorg/inaturalist/android/MissionsActivity$5;->this$0:Lorg/inaturalist/android/MissionsActivity;

    invoke-static {v1}, Lorg/inaturalist/android/MissionsActivity;->access$600(Lorg/inaturalist/android/MissionsActivity;)Lorg/inaturalist/android/GridViewExtended;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/inaturalist/android/MissionsActivity;->setGridViewHeightBasedOnItems(Lorg/inaturalist/android/GridViewExtended;)I

    return-void
.end method
