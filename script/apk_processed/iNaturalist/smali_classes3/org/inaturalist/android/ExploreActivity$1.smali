.class Lorg/inaturalist/android/ExploreActivity$1;
.super Ljava/lang/Object;
.source "ExploreActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/inaturalist/android/ExploreActivity;->onCreate(Landroid/os/Bundle;)V
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

    .line 239
    iput-object p1, p0, Lorg/inaturalist/android/ExploreActivity$1;->this$0:Lorg/inaturalist/android/ExploreActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .line 242
    new-instance p1, Landroid/content/Intent;

    iget-object v0, p0, Lorg/inaturalist/android/ExploreActivity$1;->this$0:Lorg/inaturalist/android/ExploreActivity;

    const-class v1, Lorg/inaturalist/android/ExploreSearchActivity;

    invoke-direct {p1, v0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v0, "search_filters"

    .line 243
    iget-object v1, p0, Lorg/inaturalist/android/ExploreActivity$1;->this$0:Lorg/inaturalist/android/ExploreActivity;

    iget-object v1, v1, Lorg/inaturalist/android/ExploreActivity;->mSearchFilters:Lorg/inaturalist/android/ExploreSearchFilters;

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 244
    iget-object v0, p0, Lorg/inaturalist/android/ExploreActivity$1;->this$0:Lorg/inaturalist/android/ExploreActivity;

    const/16 v1, 0x101

    invoke-virtual {v0, p1, v1}, Lorg/inaturalist/android/ExploreActivity;->startActivityForResult(Landroid/content/Intent;I)V

    return-void
.end method
