.class public Lcom/mikepenz/fastadapter/adapters/HeaderAdapter;
.super Lcom/mikepenz/fastadapter/adapters/ItemAdapter;
.source "HeaderAdapter.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<Item::",
        "Lcom/mikepenz/fastadapter/IItem;",
        ">",
        "Lcom/mikepenz/fastadapter/adapters/ItemAdapter<",
        "TItem;>;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 9
    invoke-direct {p0}, Lcom/mikepenz/fastadapter/adapters/ItemAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public getOrder()I
    .locals 1

    const/16 v0, 0x64

    return v0
.end method
