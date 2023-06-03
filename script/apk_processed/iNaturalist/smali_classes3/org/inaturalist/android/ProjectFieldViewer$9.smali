.class final Lorg/inaturalist/android/ProjectFieldViewer$9;
.super Ljava/lang/Object;
.source "ProjectFieldViewer.java"

# interfaces
.implements Lorg/apache/commons/collections4/Predicate;


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
        "Lorg/apache/commons/collections4/Predicate<",
        "Lorg/inaturalist/android/ProjectField;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic val$projectId:I


# direct methods
.method constructor <init>(I)V
    .locals 0

    .line 591
    iput p1, p0, Lorg/inaturalist/android/ProjectFieldViewer$9;->val$projectId:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic evaluate(Ljava/lang/Object;)Z
    .locals 0

    .line 591
    check-cast p1, Lorg/inaturalist/android/ProjectField;

    invoke-virtual {p0, p1}, Lorg/inaturalist/android/ProjectFieldViewer$9;->evaluate(Lorg/inaturalist/android/ProjectField;)Z

    move-result p1

    return p1
.end method

.method public evaluate(Lorg/inaturalist/android/ProjectField;)Z
    .locals 1

    .line 594
    iget-object v0, p1, Lorg/inaturalist/android/ProjectField;->project_id:Ljava/lang/Integer;

    if-eqz v0, :cond_0

    iget-object p1, p1, Lorg/inaturalist/android/ProjectField;->project_id:Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    iget v0, p0, Lorg/inaturalist/android/ProjectFieldViewer$9;->val$projectId:I

    if-ne p1, v0, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method
