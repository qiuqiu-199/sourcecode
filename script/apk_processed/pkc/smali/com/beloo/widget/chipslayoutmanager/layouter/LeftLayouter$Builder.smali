.class public final Lcom/beloo/widget/chipslayoutmanager/layouter/LeftLayouter$Builder;
.super Lcom/beloo/widget/chipslayoutmanager/layouter/AbstractLayouter$Builder;
.source "LeftLayouter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/beloo/widget/chipslayoutmanager/layouter/LeftLayouter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 99
    invoke-direct {p0}, Lcom/beloo/widget/chipslayoutmanager/layouter/AbstractLayouter$Builder;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/beloo/widget/chipslayoutmanager/layouter/LeftLayouter$1;)V
    .locals 0

    .line 98
    invoke-direct {p0}, Lcom/beloo/widget/chipslayoutmanager/layouter/LeftLayouter$Builder;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic createLayouter()Lcom/beloo/widget/chipslayoutmanager/layouter/AbstractLayouter;
    .locals 1

    .line 98
    invoke-virtual {p0}, Lcom/beloo/widget/chipslayoutmanager/layouter/LeftLayouter$Builder;->createLayouter()Lcom/beloo/widget/chipslayoutmanager/layouter/LeftLayouter;

    move-result-object v0

    return-object v0
.end method

.method public createLayouter()Lcom/beloo/widget/chipslayoutmanager/layouter/LeftLayouter;
    .locals 2

    .line 104
    new-instance v0, Lcom/beloo/widget/chipslayoutmanager/layouter/LeftLayouter;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/beloo/widget/chipslayoutmanager/layouter/LeftLayouter;-><init>(Lcom/beloo/widget/chipslayoutmanager/layouter/LeftLayouter$Builder;Lcom/beloo/widget/chipslayoutmanager/layouter/LeftLayouter$1;)V

    return-object v0
.end method
