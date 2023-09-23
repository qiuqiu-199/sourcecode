.class public final Lcom/beloo/widget/chipslayoutmanager/layouter/LTRUpLayouter$Builder;
.super Lcom/beloo/widget/chipslayoutmanager/layouter/AbstractLayouter$Builder;
.source "LTRUpLayouter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/beloo/widget/chipslayoutmanager/layouter/LTRUpLayouter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 97
    invoke-direct {p0}, Lcom/beloo/widget/chipslayoutmanager/layouter/AbstractLayouter$Builder;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/beloo/widget/chipslayoutmanager/layouter/LTRUpLayouter$1;)V
    .locals 0

    .line 96
    invoke-direct {p0}, Lcom/beloo/widget/chipslayoutmanager/layouter/LTRUpLayouter$Builder;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic createLayouter()Lcom/beloo/widget/chipslayoutmanager/layouter/AbstractLayouter;
    .locals 1

    .line 96
    invoke-virtual {p0}, Lcom/beloo/widget/chipslayoutmanager/layouter/LTRUpLayouter$Builder;->createLayouter()Lcom/beloo/widget/chipslayoutmanager/layouter/LTRUpLayouter;

    move-result-object v0

    return-object v0
.end method

.method public createLayouter()Lcom/beloo/widget/chipslayoutmanager/layouter/LTRUpLayouter;
    .locals 2

    .line 102
    new-instance v0, Lcom/beloo/widget/chipslayoutmanager/layouter/LTRUpLayouter;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/beloo/widget/chipslayoutmanager/layouter/LTRUpLayouter;-><init>(Lcom/beloo/widget/chipslayoutmanager/layouter/LTRUpLayouter$Builder;Lcom/beloo/widget/chipslayoutmanager/layouter/LTRUpLayouter$1;)V

    return-object v0
.end method
