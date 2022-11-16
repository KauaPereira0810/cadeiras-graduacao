def toinhostark():
    for carta1 in range(12):
        for carta2 in range(12):
            for carta3 in range(12):
                if carta1 == carta2 == carta3:
                    jogar('toinhostark:', carta1, carta2, carta3)
                    return
                while carta1!=carta2 or carta1!=carta3 or carta2!=carta3:
                    random.choice(Mesa)
                    for carta1 in range(12):
                        for carta2 in range(12):
                            for carta3 in range(12):
                                if carta1 == carta2 == carta3:
                                    jogar('toinhostark:', carta1, carta2, carta3)
                                    return