.class public Ledu/cmu/cylab/starslinger/exchange/WordPair;
.super Ljava/lang/Object;
.source "WordPair.java"


# instance fields
.field public EvenWord:Ljava/lang/String;

.field public OddWord:Ljava/lang/String;

.field public Value:I


# direct methods
.method public constructor <init>(ILjava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    iput p1, p0, Ledu/cmu/cylab/starslinger/exchange/WordPair;->Value:I

    .line 35
    iput-object p2, p0, Ledu/cmu/cylab/starslinger/exchange/WordPair;->EvenWord:Ljava/lang/String;

    .line 36
    iput-object p3, p0, Ledu/cmu/cylab/starslinger/exchange/WordPair;->OddWord:Ljava/lang/String;

    return-void
.end method
