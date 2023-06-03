.class Lorg/inaturalist/android/UserProfile$6;
.super Ljava/lang/Object;
.source "UserProfile.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/inaturalist/android/UserProfile;->refreshViewType()V
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

    .line 396
    iput-object p1, p0, Lorg/inaturalist/android/UserProfile$6;->this$0:Lorg/inaturalist/android/UserProfile;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 399
    iget-object v0, p0, Lorg/inaturalist/android/UserProfile$6;->this$0:Lorg/inaturalist/android/UserProfile;

    invoke-static {v0}, Lorg/inaturalist/android/UserProfile;->access$400(Lorg/inaturalist/android/UserProfile;)Landroid/view/ViewGroup;

    move-result-object v0

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 400
    iget-object v0, p0, Lorg/inaturalist/android/UserProfile$6;->this$0:Lorg/inaturalist/android/UserProfile;

    invoke-static {v0}, Lorg/inaturalist/android/UserProfile;->access$500(Lorg/inaturalist/android/UserProfile;)Landroid/view/ViewGroup;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 401
    iget-object v0, p0, Lorg/inaturalist/android/UserProfile$6;->this$0:Lorg/inaturalist/android/UserProfile;

    invoke-static {v0}, Lorg/inaturalist/android/UserProfile;->access$600(Lorg/inaturalist/android/UserProfile;)Landroid/view/ViewGroup;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setVisibility(I)V

    return-void
.end method
