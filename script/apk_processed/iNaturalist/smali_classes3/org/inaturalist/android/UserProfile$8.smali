.class Lorg/inaturalist/android/UserProfile$8;
.super Ljava/lang/Object;
.source "UserProfile.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/inaturalist/android/UserProfile;->refreshViewState()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/inaturalist/android/UserProfile;


# direct methods
.method constructor <init>(Lorg/inaturalist/android/UserProfile;)V
    .locals 0

    .line 679
    iput-object p1, p0, Lorg/inaturalist/android/UserProfile$8;->this$0:Lorg/inaturalist/android/UserProfile;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    const/4 v0, 0x3

    .line 682
    new-array v0, v0, [Landroid/view/ViewGroup;

    iget-object v1, p0, Lorg/inaturalist/android/UserProfile$8;->this$0:Lorg/inaturalist/android/UserProfile;

    invoke-static {v1}, Lorg/inaturalist/android/UserProfile;->access$500(Lorg/inaturalist/android/UserProfile;)Landroid/view/ViewGroup;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget-object v1, p0, Lorg/inaturalist/android/UserProfile$8;->this$0:Lorg/inaturalist/android/UserProfile;

    invoke-static {v1}, Lorg/inaturalist/android/UserProfile;->access$400(Lorg/inaturalist/android/UserProfile;)Landroid/view/ViewGroup;

    move-result-object v1

    const/4 v3, 0x1

    aput-object v1, v0, v3

    iget-object v1, p0, Lorg/inaturalist/android/UserProfile$8;->this$0:Lorg/inaturalist/android/UserProfile;

    invoke-static {v1}, Lorg/inaturalist/android/UserProfile;->access$600(Lorg/inaturalist/android/UserProfile;)Landroid/view/ViewGroup;

    move-result-object v1

    const/4 v3, 0x2

    aput-object v1, v0, v3

    .line 684
    array-length v1, v0

    :goto_0
    if-ge v2, v1, :cond_0

    aget-object v3, v0, v2

    .line 685
    invoke-virtual {v3}, Landroid/view/ViewGroup;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    const/4 v5, -0x1

    .line 686
    iput v5, v4, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 687
    invoke-virtual {v3, v4}, Landroid/view/ViewGroup;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 688
    invoke-virtual {v3}, Landroid/view/ViewGroup;->requestLayout()V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method
