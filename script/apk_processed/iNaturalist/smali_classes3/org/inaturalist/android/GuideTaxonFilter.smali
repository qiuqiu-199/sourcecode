.class public Lorg/inaturalist/android/GuideTaxonFilter;
.super Ljava/lang/Object;
.source "GuideTaxonFilter.java"


# instance fields
.field private mSearchText:Ljava/lang/String;

.field private mTags:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 14
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/inaturalist/android/GuideTaxonFilter;->mTags:Ljava/util/ArrayList;

    return-void
.end method


# virtual methods
.method public addTag(Ljava/lang/String;)V
    .locals 1

    .line 26
    iget-object v0, p0, Lorg/inaturalist/android/GuideTaxonFilter;->mTags:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public clearTags()V
    .locals 1

    .line 34
    iget-object v0, p0, Lorg/inaturalist/android/GuideTaxonFilter;->mTags:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    return-void
.end method

.method public getAllTags()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 47
    iget-object v0, p0, Lorg/inaturalist/android/GuideTaxonFilter;->mTags:Ljava/util/ArrayList;

    return-object v0
.end method

.method public getSearchText()Ljava/lang/String;
    .locals 1

    .line 22
    iget-object v0, p0, Lorg/inaturalist/android/GuideTaxonFilter;->mSearchText:Ljava/lang/String;

    return-object v0
.end method

.method public hasTag(Ljava/lang/String;)Z
    .locals 1

    .line 38
    iget-object v0, p0, Lorg/inaturalist/android/GuideTaxonFilter;->mTags:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public removeTag(Ljava/lang/String;)V
    .locals 1

    .line 30
    iget-object v0, p0, Lorg/inaturalist/android/GuideTaxonFilter;->mTags:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    return-void
.end method

.method public setSearchText(Ljava/lang/String;)V
    .locals 0

    .line 18
    iput-object p1, p0, Lorg/inaturalist/android/GuideTaxonFilter;->mSearchText:Ljava/lang/String;

    return-void
.end method

.method public setTags(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 42
    iget-object v0, p0, Lorg/inaturalist/android/GuideTaxonFilter;->mTags:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 43
    iget-object v0, p0, Lorg/inaturalist/android/GuideTaxonFilter;->mTags:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    return-void
.end method
