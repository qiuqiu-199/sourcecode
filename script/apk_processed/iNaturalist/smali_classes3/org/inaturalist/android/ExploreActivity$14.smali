.class Lorg/inaturalist/android/ExploreActivity$14;
.super Ljava/lang/Object;
.source "ExploreActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/inaturalist/android/ExploreActivity;->refreshObservations()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/inaturalist/android/ExploreActivity;


# direct methods
.method constructor <init>(Lorg/inaturalist/android/ExploreActivity;)V
    .locals 0

    .line 1124
    iput-object p1, p0, Lorg/inaturalist/android/ExploreActivity$14;->this$0:Lorg/inaturalist/android/ExploreActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .line 1127
    iget-object p1, p0, Lorg/inaturalist/android/ExploreActivity$14;->this$0:Lorg/inaturalist/android/ExploreActivity;

    const/4 v0, 0x1

    iput v0, p1, Lorg/inaturalist/android/ExploreActivity;->mObservationsViewMode:I

    .line 1128
    iget-object p1, p0, Lorg/inaturalist/android/ExploreActivity$14;->this$0:Lorg/inaturalist/android/ExploreActivity;

    invoke-static {p1}, Lorg/inaturalist/android/ExploreActivity;->access$2200(Lorg/inaturalist/android/ExploreActivity;)V

    return-void
.end method
