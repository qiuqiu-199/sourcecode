.class public Lcom/mikepenz/materialdrawer/holder/DimenHolder;
.super Lcom/mikepenz/materialize/holder/DimenHolder;
.source "DimenHolder.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 9
    invoke-direct {p0}, Lcom/mikepenz/materialize/holder/DimenHolder;-><init>()V

    return-void
.end method

.method public static fromDp(I)Lcom/mikepenz/materialdrawer/holder/DimenHolder;
    .locals 1

    .line 20
    new-instance v0, Lcom/mikepenz/materialdrawer/holder/DimenHolder;

    invoke-direct {v0}, Lcom/mikepenz/materialdrawer/holder/DimenHolder;-><init>()V

    .line 21
    invoke-virtual {v0, p0}, Lcom/mikepenz/materialdrawer/holder/DimenHolder;->setDp(I)V

    return-object v0
.end method
