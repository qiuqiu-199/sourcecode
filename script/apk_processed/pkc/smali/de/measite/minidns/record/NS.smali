.class public Lde/measite/minidns/record/NS;
.super Lde/measite/minidns/record/CNAME;
.source "NS.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 8
    invoke-direct {p0}, Lde/measite/minidns/record/CNAME;-><init>()V

    return-void
.end method


# virtual methods
.method public getType()Lde/measite/minidns/Record$TYPE;
    .locals 1

    .line 12
    sget-object v0, Lde/measite/minidns/Record$TYPE;->NS:Lde/measite/minidns/Record$TYPE;

    return-object v0
.end method
