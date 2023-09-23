.class public Lcom/beloo/widget/chipslayoutmanager/gravity/CustomGravityResolver;
.super Ljava/lang/Object;
.source "CustomGravityResolver.java"

# interfaces
.implements Lcom/beloo/widget/chipslayoutmanager/gravity/IChildGravityResolver;


# instance fields
.field private gravity:I


# direct methods
.method public constructor <init>(I)V
    .locals 0

    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 11
    iput p1, p0, Lcom/beloo/widget/chipslayoutmanager/gravity/CustomGravityResolver;->gravity:I

    return-void
.end method


# virtual methods
.method public getItemGravity(I)I
    .locals 0

    .line 17
    iget p1, p0, Lcom/beloo/widget/chipslayoutmanager/gravity/CustomGravityResolver;->gravity:I

    return p1
.end method
