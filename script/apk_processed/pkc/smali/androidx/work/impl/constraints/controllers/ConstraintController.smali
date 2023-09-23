.class public abstract Landroidx/work/impl/constraints/controllers/ConstraintController;
.super Ljava/lang/Object;
.source "ConstraintController.java"

# interfaces
.implements Landroidx/work/impl/constraints/ConstraintListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/work/impl/constraints/controllers/ConstraintController$OnConstraintUpdatedCallback;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Landroidx/work/impl/constraints/ConstraintListener<",
        "TT;>;"
    }
.end annotation


# instance fields
.field private mCallback:Landroidx/work/impl/constraints/controllers/ConstraintController$OnConstraintUpdatedCallback;

.field private mCurrentValue:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field

.field private final mMatchingWorkSpecIds:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mTracker:Landroidx/work/impl/constraints/trackers/ConstraintTracker;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/work/impl/constraints/trackers/ConstraintTracker<",
            "TT;>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Landroidx/work/impl/constraints/trackers/ConstraintTracker;Landroidx/work/impl/constraints/controllers/ConstraintController$OnConstraintUpdatedCallback;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/work/impl/constraints/trackers/ConstraintTracker<",
            "TT;>;",
            "Landroidx/work/impl/constraints/controllers/ConstraintController$OnConstraintUpdatedCallback;",
            ")V"
        }
    .end annotation

    .line 62
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 56
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroidx/work/impl/constraints/controllers/ConstraintController;->mMatchingWorkSpecIds:Ljava/util/List;

    .line 63
    iput-object p1, p0, Landroidx/work/impl/constraints/controllers/ConstraintController;->mTracker:Landroidx/work/impl/constraints/trackers/ConstraintTracker;

    .line 64
    iput-object p2, p0, Landroidx/work/impl/constraints/controllers/ConstraintController;->mCallback:Landroidx/work/impl/constraints/controllers/ConstraintController$OnConstraintUpdatedCallback;

    return-void
.end method

.method private updateCallback()V
    .locals 2

    .line 116
    iget-object v0, p0, Landroidx/work/impl/constraints/controllers/ConstraintController;->mMatchingWorkSpecIds:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 120
    :cond_0
    iget-object v0, p0, Landroidx/work/impl/constraints/controllers/ConstraintController;->mCurrentValue:Ljava/lang/Object;

    if-eqz v0, :cond_2

    iget-object v0, p0, Landroidx/work/impl/constraints/controllers/ConstraintController;->mCurrentValue:Ljava/lang/Object;

    invoke-virtual {p0, v0}, Landroidx/work/impl/constraints/controllers/ConstraintController;->isConstrained(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_0

    .line 123
    :cond_1
    iget-object v0, p0, Landroidx/work/impl/constraints/controllers/ConstraintController;->mCallback:Landroidx/work/impl/constraints/controllers/ConstraintController$OnConstraintUpdatedCallback;

    iget-object v1, p0, Landroidx/work/impl/constraints/controllers/ConstraintController;->mMatchingWorkSpecIds:Ljava/util/List;

    invoke-interface {v0, v1}, Landroidx/work/impl/constraints/controllers/ConstraintController$OnConstraintUpdatedCallback;->onConstraintMet(Ljava/util/List;)V

    goto :goto_1

    .line 121
    :cond_2
    :goto_0
    iget-object v0, p0, Landroidx/work/impl/constraints/controllers/ConstraintController;->mCallback:Landroidx/work/impl/constraints/controllers/ConstraintController$OnConstraintUpdatedCallback;

    iget-object v1, p0, Landroidx/work/impl/constraints/controllers/ConstraintController;->mMatchingWorkSpecIds:Ljava/util/List;

    invoke-interface {v0, v1}, Landroidx/work/impl/constraints/controllers/ConstraintController$OnConstraintUpdatedCallback;->onConstraintNotMet(Ljava/util/List;)V

    :goto_1
    return-void
.end method


# virtual methods
.method abstract hasConstraint(Landroidx/work/impl/model/WorkSpec;)Z
.end method

.method abstract isConstrained(Ljava/lang/Object;)Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)Z"
        }
    .end annotation
.end method

.method public isWorkSpecConstrained(Ljava/lang/String;)Z
    .locals 1

    .line 111
    iget-object v0, p0, Landroidx/work/impl/constraints/controllers/ConstraintController;->mCurrentValue:Ljava/lang/Object;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroidx/work/impl/constraints/controllers/ConstraintController;->mCurrentValue:Ljava/lang/Object;

    invoke-virtual {p0, v0}, Landroidx/work/impl/constraints/controllers/ConstraintController;->isConstrained(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroidx/work/impl/constraints/controllers/ConstraintController;->mMatchingWorkSpecIds:Ljava/util/List;

    .line 112
    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public onConstraintChanged(Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .line 129
    iput-object p1, p0, Landroidx/work/impl/constraints/controllers/ConstraintController;->mCurrentValue:Ljava/lang/Object;

    .line 130
    invoke-direct {p0}, Landroidx/work/impl/constraints/controllers/ConstraintController;->updateCallback()V

    return-void
.end method

.method public replace(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroidx/work/impl/model/WorkSpec;",
            ">;)V"
        }
    .end annotation

    .line 77
    iget-object v0, p0, Landroidx/work/impl/constraints/controllers/ConstraintController;->mMatchingWorkSpecIds:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 79
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/work/impl/model/WorkSpec;

    .line 80
    invoke-virtual {p0, v0}, Landroidx/work/impl/constraints/controllers/ConstraintController;->hasConstraint(Landroidx/work/impl/model/WorkSpec;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 81
    iget-object v1, p0, Landroidx/work/impl/constraints/controllers/ConstraintController;->mMatchingWorkSpecIds:Ljava/util/List;

    iget-object v0, v0, Landroidx/work/impl/model/WorkSpec;->id:Ljava/lang/String;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 85
    :cond_1
    iget-object p1, p0, Landroidx/work/impl/constraints/controllers/ConstraintController;->mMatchingWorkSpecIds:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_2

    .line 86
    iget-object p1, p0, Landroidx/work/impl/constraints/controllers/ConstraintController;->mTracker:Landroidx/work/impl/constraints/trackers/ConstraintTracker;

    invoke-virtual {p1, p0}, Landroidx/work/impl/constraints/trackers/ConstraintTracker;->removeListener(Landroidx/work/impl/constraints/ConstraintListener;)V

    goto :goto_1

    .line 88
    :cond_2
    iget-object p1, p0, Landroidx/work/impl/constraints/controllers/ConstraintController;->mTracker:Landroidx/work/impl/constraints/trackers/ConstraintTracker;

    invoke-virtual {p1, p0}, Landroidx/work/impl/constraints/trackers/ConstraintTracker;->addListener(Landroidx/work/impl/constraints/ConstraintListener;)V

    .line 90
    :goto_1
    invoke-direct {p0}, Landroidx/work/impl/constraints/controllers/ConstraintController;->updateCallback()V

    return-void
.end method

.method public reset()V
    .locals 1

    .line 97
    iget-object v0, p0, Landroidx/work/impl/constraints/controllers/ConstraintController;->mMatchingWorkSpecIds:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 98
    iget-object v0, p0, Landroidx/work/impl/constraints/controllers/ConstraintController;->mMatchingWorkSpecIds:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 99
    iget-object v0, p0, Landroidx/work/impl/constraints/controllers/ConstraintController;->mTracker:Landroidx/work/impl/constraints/trackers/ConstraintTracker;

    invoke-virtual {v0, p0}, Landroidx/work/impl/constraints/trackers/ConstraintTracker;->removeListener(Landroidx/work/impl/constraints/ConstraintListener;)V

    :cond_0
    return-void
.end method