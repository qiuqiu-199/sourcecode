.class Lorg/inaturalist/android/UserActivitiesAdapter$4;
.super Ljava/lang/Object;
.source "UserActivitiesAdapter.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/inaturalist/android/UserActivitiesAdapter;->loadObsImage(ILandroid/view/View;Lorg/inaturalist/android/BetterJSONObject;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/inaturalist/android/UserActivitiesAdapter;

.field final synthetic val$loadingObsOverlay:Landroid/view/View;

.field final synthetic val$view:Landroid/view/View;


# direct methods
.method constructor <init>(Lorg/inaturalist/android/UserActivitiesAdapter;Landroid/view/View;Landroid/view/View;)V
    .locals 0

    .line 229
    iput-object p1, p0, Lorg/inaturalist/android/UserActivitiesAdapter$4;->this$0:Lorg/inaturalist/android/UserActivitiesAdapter;

    iput-object p2, p0, Lorg/inaturalist/android/UserActivitiesAdapter$4;->val$loadingObsOverlay:Landroid/view/View;

    iput-object p3, p0, Lorg/inaturalist/android/UserActivitiesAdapter$4;->val$view:Landroid/view/View;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 232
    iget-object v0, p0, Lorg/inaturalist/android/UserActivitiesAdapter$4;->val$loadingObsOverlay:Landroid/view/View;

    new-instance v1, Landroid/widget/RelativeLayout$LayoutParams;

    iget-object v2, p0, Lorg/inaturalist/android/UserActivitiesAdapter$4;->val$view:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getHeight()I

    move-result v2

    const/4 v3, -0x1

    invoke-direct {v1, v3, v2}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method
