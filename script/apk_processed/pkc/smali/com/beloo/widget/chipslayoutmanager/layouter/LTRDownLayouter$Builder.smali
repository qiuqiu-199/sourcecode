.class public final Lcom/beloo/widget/chipslayoutmanager/layouter/LTRDownLayouter$Builder;
.super Lcom/beloo/widget/chipslayoutmanager/layouter/AbstractLayouter$Builder;
.source "LTRDownLayouter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/beloo/widget/chipslayoutmanager/layouter/LTRDownLayouter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 89
    invoke-direct {p0}, Lcom/beloo/widget/chipslayoutmanager/layouter/AbstractLayouter$Builder;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/beloo/widget/chipslayoutmanager/layouter/LTRDownLayouter$1;)V
    .locals 0

    .line 88
    invoke-direct {p0}, Lcom/beloo/widget/chipslayoutmanager/layouter/LTRDownLayouter$Builder;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic createLayouter()Lcom/beloo/widget/chipslayoutmanager/layouter/AbstractLayouter;
    .locals 1

    .line 88
    invoke-virtual {p0}, Lcom/beloo/widget/chipslayoutmanager/layouter/LTRDownLayouter$Builder;->createLayouter()Lcom/beloo/widget/chipslayoutmanager/layouter/LTRDownLayouter;

    move-result-object v0

    return-object v0
.end method

.method public createLayouter()Lcom/beloo/widget/chipslayoutmanager/layouter/LTRDownLayouter;
    .locals 2

    .line 94
    new-instance v0, Lcom/beloo/widget/chipslayoutmanager/layouter/LTRDownLayouter;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/beloo/widget/chipslayoutmanager/layouter/LTRDownLayouter;-><init>(Lcom/beloo/widget/chipslayoutmanager/layouter/LTRDownLayouter$Builder;Lcom/beloo/widget/chipslayoutmanager/layouter/LTRDownLayouter$1;)V

    return-object v0
.end method
