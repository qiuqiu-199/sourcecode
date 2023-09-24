.class public Lcom/mikepenz/materialize/Materialize;
.super Ljava/lang/Object;
.source "Materialize.java"


# instance fields
.field private final mBuilder:Lcom/mikepenz/materialize/MaterializeBuilder;

.field private mKeyboardUtil:Lcom/mikepenz/materialize/util/KeyboardUtil;


# direct methods
.method protected constructor <init>(Lcom/mikepenz/materialize/MaterializeBuilder;)V
    .locals 1

    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 14
    iput-object v0, p0, Lcom/mikepenz/materialize/Materialize;->mKeyboardUtil:Lcom/mikepenz/materialize/util/KeyboardUtil;

    .line 22
    iput-object p1, p0, Lcom/mikepenz/materialize/Materialize;->mBuilder:Lcom/mikepenz/materialize/MaterializeBuilder;

    return-void
.end method
