.class final Lorg/inaturalist/android/ProjectFieldViewer$10;
.super Ljava/lang/Object;
.source "ProjectFieldViewer.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/inaturalist/android/ProjectFieldViewer;->sortProjectFields(ILjava/util/ArrayList;)Ljava/util/List;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator<",
        "Lorg/inaturalist/android/ProjectField;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 599
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 0

    .line 599
    check-cast p1, Lorg/inaturalist/android/ProjectField;

    check-cast p2, Lorg/inaturalist/android/ProjectField;

    invoke-virtual {p0, p1, p2}, Lorg/inaturalist/android/ProjectFieldViewer$10;->compare(Lorg/inaturalist/android/ProjectField;Lorg/inaturalist/android/ProjectField;)I

    move-result p1

    return p1
.end method

.method public compare(Lorg/inaturalist/android/ProjectField;Lorg/inaturalist/android/ProjectField;)I
    .locals 3

    .line 602
    iget-object v0, p1, Lorg/inaturalist/android/ProjectField;->project_id:Ljava/lang/Integer;

    const/4 v1, -0x1

    if-eqz v0, :cond_0

    iget-object v0, p1, Lorg/inaturalist/android/ProjectField;->project_id:Ljava/lang/Integer;

    goto :goto_0

    :cond_0
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    .line 603
    :goto_0
    iget-object v2, p2, Lorg/inaturalist/android/ProjectField;->project_id:Ljava/lang/Integer;

    if-eqz v2, :cond_1

    iget-object v1, p2, Lorg/inaturalist/android/ProjectField;->project_id:Ljava/lang/Integer;

    goto :goto_1

    :cond_1
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    .line 605
    :goto_1
    invoke-virtual {v0, v1}, Ljava/lang/Integer;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 607
    iget-object v0, p1, Lorg/inaturalist/android/ProjectField;->position:Ljava/lang/Integer;

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    iget-object p1, p1, Lorg/inaturalist/android/ProjectField;->position:Ljava/lang/Integer;

    goto :goto_2

    :cond_2
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    .line 608
    :goto_2
    iget-object v0, p2, Lorg/inaturalist/android/ProjectField;->position:Ljava/lang/Integer;

    if-eqz v0, :cond_3

    iget-object p2, p2, Lorg/inaturalist/android/ProjectField;->position:Ljava/lang/Integer;

    goto :goto_3

    :cond_3
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    .line 610
    :goto_3
    invoke-virtual {p1, p2}, Ljava/lang/Integer;->compareTo(Ljava/lang/Integer;)I

    move-result p1

    return p1

    .line 613
    :cond_4
    invoke-virtual {v0, v1}, Ljava/lang/Integer;->compareTo(Ljava/lang/Integer;)I

    move-result p1

    return p1
.end method
