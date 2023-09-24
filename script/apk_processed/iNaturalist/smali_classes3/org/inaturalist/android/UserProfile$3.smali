.class Lorg/inaturalist/android/UserProfile$3;
.super Ljava/lang/Object;
.source "UserProfile.java"

# interfaces
.implements Landroid/widget/AbsListView$OnScrollListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/inaturalist/android/UserProfile;->onCreate(Landroid/os/Bundle;)V
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

    .line 201
    iput-object p1, p0, Lorg/inaturalist/android/UserProfile$3;->this$0:Lorg/inaturalist/android/UserProfile;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onScroll(Landroid/widget/AbsListView;III)V
    .locals 0

    add-int/2addr p2, p3

    add-int/lit8 p1, p4, -0x3

    if-lt p2, p1, :cond_0

    if-lez p4, :cond_0

    .line 204
    iget-object p1, p0, Lorg/inaturalist/android/UserProfile$3;->this$0:Lorg/inaturalist/android/UserProfile;

    iget-object p1, p1, Lorg/inaturalist/android/UserProfile;->mObservations:Ljava/util/ArrayList;

    if-eqz p1, :cond_0

    iget-object p1, p0, Lorg/inaturalist/android/UserProfile$3;->this$0:Lorg/inaturalist/android/UserProfile;

    iget-object p1, p1, Lorg/inaturalist/android/UserProfile;->mObservations:Ljava/util/ArrayList;

    .line 205
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    if-lez p1, :cond_0

    .line 207
    iget-object p1, p0, Lorg/inaturalist/android/UserProfile$3;->this$0:Lorg/inaturalist/android/UserProfile;

    invoke-static {p1}, Lorg/inaturalist/android/UserProfile;->access$000(Lorg/inaturalist/android/UserProfile;)Landroid/widget/Button;

    move-result-object p1

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Landroid/widget/Button;->setVisibility(I)V

    goto :goto_0

    .line 209
    :cond_0
    iget-object p1, p0, Lorg/inaturalist/android/UserProfile$3;->this$0:Lorg/inaturalist/android/UserProfile;

    invoke-static {p1}, Lorg/inaturalist/android/UserProfile;->access$000(Lorg/inaturalist/android/UserProfile;)Landroid/widget/Button;

    move-result-object p1

    const/16 p2, 0x8

    invoke-virtual {p1, p2}, Landroid/widget/Button;->setVisibility(I)V

    :goto_0
    return-void
.end method

.method public onScrollStateChanged(Landroid/widget/AbsListView;I)V
    .locals 0

    return-void
.end method
