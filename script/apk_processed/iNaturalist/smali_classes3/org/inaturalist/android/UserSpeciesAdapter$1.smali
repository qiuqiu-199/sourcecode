.class Lorg/inaturalist/android/UserSpeciesAdapter$1;
.super Ljava/lang/Object;
.source "UserSpeciesAdapter.java"

# interfaces
.implements Lcom/squareup/picasso/Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/inaturalist/android/UserSpeciesAdapter;->loadObsImage(ILandroid/widget/ImageView;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/inaturalist/android/UserSpeciesAdapter;

.field final synthetic val$imageView:Landroid/widget/ImageView;


# direct methods
.method constructor <init>(Lorg/inaturalist/android/UserSpeciesAdapter;Landroid/widget/ImageView;)V
    .locals 0

    .line 209
    iput-object p1, p0, Lorg/inaturalist/android/UserSpeciesAdapter$1;->this$0:Lorg/inaturalist/android/UserSpeciesAdapter;

    iput-object p2, p0, Lorg/inaturalist/android/UserSpeciesAdapter$1;->val$imageView:Landroid/widget/ImageView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onError()V
    .locals 0

    return-void
.end method

.method public onSuccess()V
    .locals 2

    .line 212
    iget-object v0, p0, Lorg/inaturalist/android/UserSpeciesAdapter$1;->val$imageView:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    return-void
.end method
