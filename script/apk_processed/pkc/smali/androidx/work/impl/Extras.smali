.class public Landroidx/work/impl/Extras;
.super Ljava/lang/Object;
.source "Extras.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/work/impl/Extras$RuntimeExtras;
    }
.end annotation


# instance fields
.field private mInputData:Landroidx/work/Data;

.field private mRuntimeExtras:Landroidx/work/impl/Extras$RuntimeExtras;

.field private mTags:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroidx/work/Data;Ljava/util/List;Landroidx/work/impl/Extras$RuntimeExtras;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/work/Data;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Landroidx/work/impl/Extras$RuntimeExtras;",
            ")V"
        }
    .end annotation

    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 45
    iput-object p1, p0, Landroidx/work/impl/Extras;->mInputData:Landroidx/work/Data;

    .line 46
    new-instance p1, Ljava/util/HashSet;

    invoke-direct {p1, p2}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    iput-object p1, p0, Landroidx/work/impl/Extras;->mTags:Ljava/util/Set;

    .line 47
    iput-object p3, p0, Landroidx/work/impl/Extras;->mRuntimeExtras:Landroidx/work/impl/Extras$RuntimeExtras;

    return-void
.end method


# virtual methods
.method public getInputData()Landroidx/work/Data;
    .locals 1

    .line 51
    iget-object v0, p0, Landroidx/work/impl/Extras;->mInputData:Landroidx/work/Data;

    return-object v0
.end method

.method public getRuntimeExtras()Landroidx/work/impl/Extras$RuntimeExtras;
    .locals 1

    .line 59
    iget-object v0, p0, Landroidx/work/impl/Extras;->mRuntimeExtras:Landroidx/work/impl/Extras$RuntimeExtras;

    return-object v0
.end method

.method public getTags()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 55
    iget-object v0, p0, Landroidx/work/impl/Extras;->mTags:Ljava/util/Set;

    return-object v0
.end method
