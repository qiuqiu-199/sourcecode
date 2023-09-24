.class public abstract Lcom/beloo/widget/chipslayoutmanager/layouter/criteria/AbstractCriteriaFactory;
.super Ljava/lang/Object;
.source "AbstractCriteriaFactory.java"

# interfaces
.implements Lcom/beloo/widget/chipslayoutmanager/layouter/criteria/ICriteriaFactory;


# instance fields
.field additionalLength:I

.field additionalRowCount:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public setAdditionalLength(I)V
    .locals 1

    if-gez p1, :cond_0

    .line 10
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "additional height can\'t be negative"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 11
    :cond_0
    iput p1, p0, Lcom/beloo/widget/chipslayoutmanager/layouter/criteria/AbstractCriteriaFactory;->additionalLength:I

    return-void
.end method

.method public setAdditionalRowsCount(I)V
    .locals 0

    .line 15
    iput p1, p0, Lcom/beloo/widget/chipslayoutmanager/layouter/criteria/AbstractCriteriaFactory;->additionalRowCount:I

    return-void
.end method
