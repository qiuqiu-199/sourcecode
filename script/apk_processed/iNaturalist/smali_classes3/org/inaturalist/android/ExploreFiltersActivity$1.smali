.class Lorg/inaturalist/android/ExploreFiltersActivity$1;
.super Ljava/lang/Object;
.source "ExploreFiltersActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/inaturalist/android/ExploreFiltersActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/inaturalist/android/ExploreFiltersActivity;


# direct methods
.method constructor <init>(Lorg/inaturalist/android/ExploreFiltersActivity;)V
    .locals 0

    .line 195
    iput-object p1, p0, Lorg/inaturalist/android/ExploreFiltersActivity$1;->this$0:Lorg/inaturalist/android/ExploreFiltersActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 0

    .line 198
    iget-object p1, p0, Lorg/inaturalist/android/ExploreFiltersActivity$1;->this$0:Lorg/inaturalist/android/ExploreFiltersActivity;

    invoke-static {p1}, Lorg/inaturalist/android/ExploreFiltersActivity;->access$000(Lorg/inaturalist/android/ExploreFiltersActivity;)Landroid/widget/RadioButton;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/RadioButton;->performClick()Z

    return-void
.end method
