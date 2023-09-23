.class public Lorg/bouncycastle/jcajce/spec/SkeinParameterSpec;
.super Ljava/lang/Object;
.source "SkeinParameterSpec.java"

# interfaces
.implements Ljava/security/spec/AlgorithmParameterSpec;


# instance fields
.field private parameters:Ljava/util/Map;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 88
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    invoke-direct {p0, v0}, Lorg/bouncycastle/jcajce/spec/SkeinParameterSpec;-><init>(Ljava/util/Map;)V

    return-void
.end method

.method private constructor <init>(Ljava/util/Map;)V
    .locals 0

    .line 92
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 93
    invoke-static {p1}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object p1

    iput-object p1, p0, Lorg/bouncycastle/jcajce/spec/SkeinParameterSpec;->parameters:Ljava/util/Map;

    return-void
.end method


# virtual methods
.method public getParameters()Ljava/util/Map;
    .locals 1

    .line 101
    iget-object v0, p0, Lorg/bouncycastle/jcajce/spec/SkeinParameterSpec;->parameters:Ljava/util/Map;

    return-object v0
.end method
