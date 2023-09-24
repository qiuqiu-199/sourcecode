.class Lorg/inaturalist/android/ObservationListActivity$1;
.super Ljava/lang/Object;
.source "ObservationListActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/inaturalist/android/ObservationListActivity;->onLoadingMoreResultsFailed()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/inaturalist/android/ObservationListActivity;


# direct methods
.method constructor <init>(Lorg/inaturalist/android/ObservationListActivity;)V
    .locals 0

    .line 200
    iput-object p1, p0, Lorg/inaturalist/android/ObservationListActivity$1;->this$0:Lorg/inaturalist/android/ObservationListActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 203
    iget-object v0, p0, Lorg/inaturalist/android/ObservationListActivity$1;->this$0:Lorg/inaturalist/android/ObservationListActivity;

    invoke-virtual {v0}, Lorg/inaturalist/android/ObservationListActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lorg/inaturalist/android/ObservationListActivity$1;->this$0:Lorg/inaturalist/android/ObservationListActivity;

    invoke-virtual {v1}, Lorg/inaturalist/android/ObservationListActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f100285

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    return-void
.end method
