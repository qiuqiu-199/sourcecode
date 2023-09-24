.class public Lde/measite/minidns/record/PTR;
.super Lde/measite/minidns/record/CNAME;
.source "PTR.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 12
    invoke-direct {p0}, Lde/measite/minidns/record/CNAME;-><init>()V

    return-void
.end method


# virtual methods
.method public getType()Lde/measite/minidns/Record$TYPE;
    .locals 1

    .line 16
    sget-object v0, Lde/measite/minidns/Record$TYPE;->PTR:Lde/measite/minidns/Record$TYPE;

    return-object v0
.end method
